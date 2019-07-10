--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 11.4

-- Started on 2019-07-10 18:11:10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 17155)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying NOT NULL,
    dept_name character varying NOT NULL
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 17163)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer NOT NULL,
    dept_no character varying NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 17169)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying NOT NULL,
    emp_no integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 17175)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer NOT NULL,
    birth_date date NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    gender character varying NOT NULL,
    hire_date date NOT NULL
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17183)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer NOT NULL,
    salary integer NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 17186)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    emp_no integer NOT NULL,
    title character varying NOT NULL,
    from_date date NOT NULL,
    to_date date NOT NULL
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 2709 (class 2606 OID 17162)
-- Name: departments pk_departments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departments
    ADD CONSTRAINT pk_departments PRIMARY KEY (dept_no);


--
-- TOC entry 2711 (class 2606 OID 17182)
-- Name: employees pk_employees; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (emp_no);


--
-- TOC entry 2713 (class 2606 OID 17197)
-- Name: dept_emp fk_dept_emp_dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2712 (class 2606 OID 17192)
-- Name: dept_emp fk_dept_emp_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_emp
    ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2714 (class 2606 OID 17202)
-- Name: dept_manager fk_dept_manager_dept_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY (dept_no) REFERENCES public.departments(dept_no);


--
-- TOC entry 2715 (class 2606 OID 17207)
-- Name: dept_manager fk_dept_manager_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dept_manager
    ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2716 (class 2606 OID 17212)
-- Name: salaries fk_salaries_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.salaries
    ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


--
-- TOC entry 2717 (class 2606 OID 17217)
-- Name: titles fk_titles_emp_no; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT fk_titles_emp_no FOREIGN KEY (emp_no) REFERENCES public.employees(emp_no);


-- Completed on 2019-07-10 18:11:10

--
-- PostgreSQL database dump complete
--

